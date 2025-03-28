# Run:
# ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py
# ros2 run turtlebot3_teleop teleop_keyboard

{ pkgs ? import ../. {} }:
with pkgs;
with rosPackages.humble;
with pythonPackages;

mkShell {
  buildInputs = [
    glibcLocales
    (buildEnv { paths = [
      ros-base
      turtlebot3-teleop
      turtlebot3-gazebo
    ]; })
  ];

  ROS_HOSTNAME = "localhost";
  ROS_MASTER_URI = "http://localhost:11311";
  TURTLEBOT3_MODEL = "burger";
}
