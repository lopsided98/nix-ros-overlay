
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-msgs-adapter, tobas-eigen-tools, tobas-kdl, tobas-kdl-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl-msgs-adapter";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl_msgs_adapter/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "bf39e7f1b97dfc11dfad6438f9efdac9cdaf1d2b3638024e567ee1bc18a46e7a";
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
