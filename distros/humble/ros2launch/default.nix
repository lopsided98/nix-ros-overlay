
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, launch-xml, launch-yaml, pythonPackages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-humble-ros2launch";
  version = "0.19.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/humble/ros2launch/0.19.7-2.tar.gz";
    name = "0.19.7-2.tar.gz";
    sha256 = "47c9778af21d89ffe7d5883d08d4967284e4ce1f300e7af0437baafa216208dd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros launch-xml launch-yaml ros2cli ros2pkg ];

  meta = {
    description = "The launch command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
