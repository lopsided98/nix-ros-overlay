
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-aruco-tracker, turtlebot3-automatic-parking, turtlebot3-automatic-parking-vision, turtlebot3-follower, turtlebot3-panorama, turtlebot3-yolo-object-detection }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-applications";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_applications-release/archive/release/jazzy/turtlebot3_applications/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "1c67df93eced4de850844c25af4d85d2e8da4f51fbe90b33f9a8fe60b085251d";
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
