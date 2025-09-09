
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-aruco-tracker, turtlebot3-automatic-parking, turtlebot3-automatic-parking-vision, turtlebot3-follower, turtlebot3-panorama, turtlebot3-yolo-object-detection }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-applications";
  version = "1.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications-release/archive/release/humble/turtlebot3_applications/1.3.3-2.tar.gz";
    name = "1.3.3-2.tar.gz";
    sha256 = "ab7b03811eb044fa5a2d8530304bf941b780bcf8db165ad20ca618b95725c30d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot3-aruco-tracker turtlebot3-automatic-parking turtlebot3-automatic-parking-vision turtlebot3-follower turtlebot3-panorama turtlebot3-yolo-object-detection ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS packages for the turtlebot3 applications (meta package)";
    license = with lib.licenses; [ asl20 ];
  };
}
