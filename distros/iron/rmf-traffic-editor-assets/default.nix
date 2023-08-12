
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-iron-rmf-traffic-editor-assets";
  version = "1.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/iron/rmf_traffic_editor_assets/1.7.1-1.tar.gz";
    name = "1.7.1-1.tar.gz";
    sha256 = "8169544af2de6d3ee7fc7aa6d2d41b0243f2efa4093834e37883b67e79825335";
  };

  buildType = "ament_python";

  meta = {
    description = ''Assets for use with traffic_editor.'';
    license = with lib.licenses; [ asl20 ];
  };
}
