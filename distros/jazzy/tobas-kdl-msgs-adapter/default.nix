
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-msgs-adapter, tobas-eigen-tools, tobas-kdl, tobas-kdl-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl-msgs-adapter";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl_msgs_adapter/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "c50af7fdec4c2c538c522b0c2db46f028c0e4157d5d22ef8d7ed803f5a50169e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-eigen-msgs-adapter tobas-eigen-tools tobas-kdl tobas-kdl-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 type adapters for KDL-compatible Tobas messages.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
