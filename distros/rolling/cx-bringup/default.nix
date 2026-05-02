
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cx-ament-index-plugin, cx-clips-env-manager, cx-config-plugin, cx-example-plugin, cx-executive-plugin, cx-file-load-plugin, cx-protobuf-plugin, cx-ros-comm-gen, cx-ros-msgs-plugin, example-interfaces, launch-ros, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-cx-bringup";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_bringup/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "878c80b7d5d7807d942765e9d486edb55873c16742965e1d849b38a63a00f55f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cx-ament-index-plugin cx-clips-env-manager cx-config-plugin cx-example-plugin cx-executive-plugin cx-file-load-plugin cx-protobuf-plugin cx-ros-comm-gen cx-ros-msgs-plugin example-interfaces launch-ros std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Central CX bringup scripts and parameters for launching CLIPS example programs";
    license = with lib.licenses; [ asl20 ];
  };
}
