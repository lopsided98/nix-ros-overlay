
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-rmf-demos-dashboard-resources";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/galactic/rmf_demos_dashboard_resources/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "25396c7f7b36d97ee65351254303f4953c35d01e7a74a4b810ada18851a26a1f";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Resource pack for RMF dashboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
