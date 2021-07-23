
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-galactic-rmf-traffic-editor-assets";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/galactic/rmf_traffic_editor_assets/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "1060a5ea3cc4e0a2ff51bf8cada19c1badbe7dc6a679715b32e9139123595d39";
  };

  buildType = "ament_python";

  meta = {
    description = ''Assets for use with traffic_editor.'';
    license = with lib.licenses; [ asl20 ];
  };
}
