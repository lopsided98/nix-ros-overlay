
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cx-ament-index-plugin, cx-clips-env-manager, cx-config-plugin, cx-example-plugin, cx-executive-plugin, cx-file-load-plugin, cx-protobuf-plugin, cx-ros-comm-gen, cx-ros-msgs-plugin, example-interfaces, launch-ros, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-cx-bringup";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/lyrical/cx_bringup/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "468735acafcb9dd26f344dd5efcf3596f40305f26935e334df9d6c5393ba4cf5";
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
