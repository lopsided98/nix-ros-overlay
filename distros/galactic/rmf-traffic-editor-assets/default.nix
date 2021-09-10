
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-galactic-rmf-traffic-editor-assets";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/galactic/rmf_traffic_editor_assets/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "3d1e84f86ebb88391ac8e9ded87eedb2511370fc6146b938344efafcfb43606f";
  };

  buildType = "ament_python";

  meta = {
    description = ''Assets for use with traffic_editor.'';
    license = with lib.licenses; [ asl20 ];
  };
}
