
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic-editor-assets";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/humble/rmf_traffic_editor_assets/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "a6d5fd3100459b022606d8630d8b3240d9780bcc52c873c97c240f63a5f6fba5";
  };

  buildType = "ament_python";

  meta = {
    description = ''Assets for use with traffic_editor.'';
    license = with lib.licenses; [ asl20 ];
  };
}
