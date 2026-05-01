
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-rmf-traffic-editor-assets";
  version = "1.14.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/lyrical/rmf_traffic_editor_assets/1.14.0-3.tar.gz";
    name = "1.14.0-3.tar.gz";
    sha256 = "c7a3f0e8abc4be5420c7189343c719a959824fd26ff7cb0192495306c6850e04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Assets for use with traffic_editor.";
    license = with lib.licenses; [ asl20 ];
  };
}
