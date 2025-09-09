
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cx-ament-index-plugin, cx-clips-env-manager, cx-config-plugin, cx-example-plugin, cx-executive-plugin, cx-file-load-plugin, cx-protobuf-plugin, cx-ros-comm-gen, cx-ros-msgs-plugin, example-interfaces, launch-ros, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-cx-bringup";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_bringup/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "5c79b317d5972e2b688a487480c5a467a914c5215fbf36b3bb1d6172c2cdffe8";
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
