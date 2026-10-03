
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-eigen-msgs-adapter, tobas-eigen-tools, tobas-kdl, tobas-kdl-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl-msgs-adapter";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl_msgs_adapter/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "0be8421464a01563e17d961314f38be6e05013ef6c5eb08435ba4f9bb831aa96";
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
