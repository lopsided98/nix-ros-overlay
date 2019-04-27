# Run:
# export TURTLEBOT3_MODEL=burger
# roslaunch turtlebot3_gazebo turtlebot3_world.launch
# roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch

with import ../. {};
with rosPackages.kinetic;
with pythonPackages;

mkShell {
  buildInputs = [
    catkin
    glibcLocales
    (buildEnv { paths = [
      turtlebot3-description
      turtlebot3-teleop
      turtlebot3-gazebo
      # Doesn't work out of the box yet because path needs to added to
      # GAZEBO_PLUGIN_PATH
      gazebo-plugins
      xacro
    ]; })
  ];

  ROS_HOSTNAME = "localhost";
  ROS_MASTER_URI = "http://localhost:11311";
}
