
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic-editor-assets";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/humble/rmf_traffic_editor_assets/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "478f806b54a7149f5312a4cc335566bfd33368cba562ddacf1e36e0035fe2ea9";
  };

  buildType = "ament_python";

  meta = {
    description = ''Assets for use with traffic_editor.'';
    license = with lib.licenses; [ asl20 ];
  };
}
