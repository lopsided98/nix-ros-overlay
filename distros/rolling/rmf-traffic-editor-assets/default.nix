
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-editor-assets";
  version = "1.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/rolling/rmf_traffic_editor_assets/1.6.0-2.tar.gz";
    name = "1.6.0-2.tar.gz";
    sha256 = "5c135d4ab5c6ef15fb1b774403f488ca41279f78294cac3765ba5797a8778f35";
  };

  buildType = "ament_python";

  meta = {
    description = ''Assets for use with traffic_editor.'';
    license = with lib.licenses; [ asl20 ];
  };
}
