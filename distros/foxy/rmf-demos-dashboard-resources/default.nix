
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-rmf-demos-dashboard-resources";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/foxy/rmf_demos_dashboard_resources/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "d492468c3de125817d8f218a3c1ae293c762737ced1c3aea8833f1ffa976d20b";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Resource pack for RMF dashboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
