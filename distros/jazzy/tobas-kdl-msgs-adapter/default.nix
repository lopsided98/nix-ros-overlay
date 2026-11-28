
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-msgs-adapter, tobas-eigen-tools, tobas-kdl, tobas-kdl-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl-msgs-adapter";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl_msgs_adapter/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "2a9df22bbf061d7f5fc5b1c8cc1ab991ae0187781ba2f4113f563420ce870771";
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
