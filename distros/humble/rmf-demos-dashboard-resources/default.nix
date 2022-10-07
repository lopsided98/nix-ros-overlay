
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-rmf-demos-dashboard-resources";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/humble/rmf_demos_dashboard_resources/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d24c91646e96e82c038d4bb97e719e122c669ac910cb0e630d3ce824c6b1e59d";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Resource pack for RMF dashboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
