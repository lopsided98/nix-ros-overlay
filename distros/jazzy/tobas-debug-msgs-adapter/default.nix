
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs, tobas-eigen-msgs-adapter, tobas-kdl-msgs-adapter }:
buildRosPackage {
  pname = "ros-jazzy-tobas-debug-msgs-adapter";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_debug_msgs_adapter/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "b1cfb3fb476521b17c60c5399525a9281e7b786c0ed9472c64e5aba46c1ab71f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-debug-msgs tobas-eigen-msgs-adapter tobas-kdl-msgs-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 type adapters for Tobas controller and observer debug messages.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
