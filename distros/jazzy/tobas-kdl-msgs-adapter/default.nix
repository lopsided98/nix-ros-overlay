
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-msgs-adapter, tobas-eigen-tools, tobas-kdl, tobas-kdl-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl-msgs-adapter";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl_msgs_adapter/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "cf75634288447bc87eadda02cc17717713de11961927dedbb83b6968de5d9a32";
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
