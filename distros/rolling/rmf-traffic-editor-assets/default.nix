
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-editor-assets";
  version = "1.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/rolling/rmf_traffic_editor_assets/1.8.2-1.tar.gz";
    name = "1.8.2-1.tar.gz";
    sha256 = "ed3b88f60bfd3b0073b24b0559aa374fbb9bd6a68ccc3c4b26947feab55b19db";
  };

  buildType = "ament_python";

  meta = {
    description = ''Assets for use with traffic_editor.'';
    license = with lib.licenses; [ asl20 ];
  };
}
