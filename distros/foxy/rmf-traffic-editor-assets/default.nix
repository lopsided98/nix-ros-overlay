
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-foxy-rmf-traffic-editor-assets";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/foxy/rmf_traffic_editor_assets/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "62fba9ab1aa9a196bb36d4a609f5723b033adcecc53fd6a7da272aa389b586cb";
  };

  buildType = "ament_python";

  meta = {
    description = ''Assets for use with traffic_editor.'';
    license = with lib.licenses; [ asl20 ];
  };
}
