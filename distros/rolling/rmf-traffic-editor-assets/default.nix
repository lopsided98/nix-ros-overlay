
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-editor-assets";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/rolling/rmf_traffic_editor_assets/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "f50f5ec1a74c3f90cd97ce63eed21caa2efaffb7ea1f156c9b13bd470bdd1e24";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Assets for use with traffic_editor.";
    license = with lib.licenses; [ asl20 ];
  };
}
