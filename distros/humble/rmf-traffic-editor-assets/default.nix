
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic-editor-assets";
  version = "1.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/humble/rmf_traffic_editor_assets/1.6.3-1.tar.gz";
    name = "1.6.3-1.tar.gz";
    sha256 = "bf5ed9f37dee22647148230df490a8bf0b76b9495846874dc3ff8c6f45081ee6";
  };

  buildType = "ament_python";

  meta = {
    description = "Assets for use with traffic_editor.";
    license = with lib.licenses; [ asl20 ];
  };
}
