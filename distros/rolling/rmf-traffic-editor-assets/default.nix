
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-editor-assets";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/rolling/rmf_traffic_editor_assets/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "c0b3034e4715d5c8cbd8bd5f76e53436e81428d7c63f7d1765f66b40f6471a34";
  };

  buildType = "ament_python";

  meta = {
    description = ''Assets for use with traffic_editor.'';
    license = with lib.licenses; [ asl20 ];
  };
}
