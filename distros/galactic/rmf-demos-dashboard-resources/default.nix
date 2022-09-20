
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-rmf-demos-dashboard-resources";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_demos-release/archive/release/galactic/rmf_demos_dashboard_resources/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "99f57b3ac81a85ebfa7fd1446fe650b24f4b219aaa5b1181a342cb8b7a2a3a06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Resource pack for RMF dashboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
