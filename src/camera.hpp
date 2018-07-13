#pragma once
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

enum CameraMovement {
  FORWARD,
  BACKWARD,
  RIGHT,
  LEFT
};


// Default camera values
const float YAW         = -90.0f;
const float PITCH       =  0.0f;
const float SPEED       =  2.5f;
const float SENSITIVITY =  0.1f;

class Camera {

private:
  glm::vec3 m_cameraPos;
  glm::vec3 Front;
  glm::vec3 Up;
  glm::vec3 Right;
  glm::vec3 m_worldUp;

  float m_cameraSpeed;
  float yaw, pitch;

public:
  Camera(glm::vec3 cameraPos, glm::vec3 cameraFront, glm::vec3 cameraUp):
    m_cameraPos(cameraPos),
    Front(cameraFront),
    m_worldUp(cameraUp),
    m_cameraSpeed(SPEED),
    yaw(YAW),
    pitch(PITCH) {
    updateVectors();
  }

  glm::mat4 getLookAt() const {
    return glm::lookAt(m_cameraPos, // position of the camera
		       m_cameraPos + Front, // where to look
		       Up); // up vector for the world coord

  }

  void move_direction(CameraMovement direction, float delta) {

    float offset = m_cameraSpeed * delta;
    switch (direction) {
    case FORWARD:
      m_cameraPos += Front * offset;
      break;
    case BACKWARD:
      m_cameraPos -= Front * offset;
      break;
    case RIGHT:
      m_cameraPos += Right * offset;
      break;
    case LEFT:
      m_cameraPos -= Right * offset;
      break;
    }
  }

  void set_angles(float yaw, float pitch) {
    glm::vec3 front;
    front.x = cos(glm::radians(yaw)) * cos(glm::radians(pitch));
    front.y = sin(glm::radians(pitch));
    front.z = sin(glm::radians(yaw)) * cos(glm::radians(pitch));
    Front = glm::normalize(front);
    updateVectors();
  }

  // Processes input received from a mouse input system. Expects the offset value in both the x and y direction.
    void ProcessMouseMovement(float xoffset, float yoffset, GLboolean constrainPitch = true)
    {

        yaw   += xoffset * SENSITIVITY;
        pitch += yoffset * SENSITIVITY;

        // Make sure that when pitch is out of bounds, screen doesn't get flipped
        if (constrainPitch)
        {
            if (pitch > 89.0f)
                pitch = 89.0f;
            if (pitch < -89.0f)
                pitch = -89.0f;
        }

        // Update Front, Right and Up Vectors using the updated Euler angles
	updateVectors();
    }
private:

  void updateVectors() {
    glm::vec3 front;
    front.x = cos(glm::radians(yaw)) * cos(glm::radians(pitch));
    front.y = sin(glm::radians(pitch));
    front.z = sin(glm::radians(yaw)) * cos(glm::radians(pitch));

    Front = glm::normalize(front);
    // Also re-calculate the Right and Up vector
    Right = glm::normalize(glm::cross(Front, m_worldUp));  // Normalize the vectors, because their length gets closer to 0 the more you look up or down which results in slower movement.
    Up    = glm::normalize(glm::cross(Right, Front));
  }

};
