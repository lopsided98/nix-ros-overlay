
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-editor-assets";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/rolling/rmf_traffic_editor_assets/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "cd4428fdc82203735e18f2b85f3fa2c4612f25bb4d512795fa25dcafb293904f";
  };

  buildType = "ament_python";

  meta = {
    description = ''Assets for use with traffic_editor.'';
    license = with lib.licenses; [ asl20 ];
  };
}
