
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cx-ament-index-plugin, cx-clips-env-manager, cx-config-plugin, cx-example-plugin, cx-executive-plugin, cx-file-load-plugin, cx-protobuf-plugin, cx-ros-comm-gen, cx-ros-msgs-plugin, example-interfaces, launch-ros, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-cx-bringup";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_bringup/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "be95752745229a70ec4c67d88e584801a8ff0e19504a72cdb2f62a4a7626a2f2";
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
