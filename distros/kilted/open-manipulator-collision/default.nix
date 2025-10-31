
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, fcl, kdl-parser, rclcpp, sensor-msgs, std-msgs, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-open-manipulator-collision";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/kilted/open_manipulator_collision/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "5fa2059bf4ca4c5bec7cdddb34d1294761362e341b05d1d78585dccebfb1968d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen fcl kdl-parser rclcpp sensor-msgs std-msgs urdf visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package implements a self-collision detection system for the follower robot during
    leader-follower teleoperation. Its primary purpose is to enhance safety by detecting
    potential self-collisions in real time while the robot is being remotely operated.";
    license = with lib.licenses; [ asl20 ];
  };
}
