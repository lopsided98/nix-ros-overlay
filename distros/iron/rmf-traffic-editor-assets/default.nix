
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-iron-rmf-traffic-editor-assets";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/iron/rmf_traffic_editor_assets/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "e009526c7846c172301203e4e72fb12e640dbbfe67c3ac98b814cea344aebcfb";
  };

  buildType = "ament_python";

  meta = {
    description = ''Assets for use with traffic_editor.'';
    license = with lib.licenses; [ asl20 ];
  };
}
