
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-iron-rmf-traffic-editor-assets";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/iron/rmf_traffic_editor_assets/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "156674115699309bd1695df2acf8091049e6f7469b9b18bbb67c3569e79d8917";
  };

  buildType = "ament_python";

  meta = {
    description = ''Assets for use with traffic_editor.'';
    license = with lib.licenses; [ asl20 ];
  };
}
