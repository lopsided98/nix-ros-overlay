
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cx-ament-index-plugin, cx-bringup, cx-clips-env-manager, cx-config-plugin, cx-example-plugin, cx-executive-plugin, cx-file-load-plugin, cx-msgs, cx-plugin, cx-protobuf-plugin, cx-ros-comm-gen, cx-ros-msgs-plugin, cx-tf2-pose-tracker-plugin, cx-utils }:
buildRosPackage {
  pname = "ros-kilted-clips-executive";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/clips_executive/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "bec9ed94181d6cf6a2ad34d44233df4429a5fc367f920bf3f92d78e3dc971fb7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cx-ament-index-plugin cx-bringup cx-clips-env-manager cx-config-plugin cx-example-plugin cx-executive-plugin cx-file-load-plugin cx-msgs cx-plugin cx-protobuf-plugin cx-ros-comm-gen cx-ros-msgs-plugin cx-tf2-pose-tracker-plugin cx-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 CLIPS-Executive meta package and documentation";
    license = with lib.licenses; [ asl20 ];
  };
}
