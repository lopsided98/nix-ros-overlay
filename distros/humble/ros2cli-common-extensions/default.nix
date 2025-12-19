
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-xml, launch-yaml, ros2action, ros2cli, ros2component, ros2doctor, ros2interface, ros2launch, ros2lifecycle, ros2multicast, ros2node, ros2param, ros2pkg, ros2plugin, ros2run, ros2service, ros2topic, sros2 }:
buildRosPackage {
  pname = "ros-humble-ros2cli-common-extensions";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli_common_extensions-release/archive/release/humble/ros2cli_common_extensions/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "200c88dc909a62ae12b263d04d8ae7e3e5077bb3edfda99bafeb7d8090f99a5f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-xml launch-yaml ros2action ros2cli ros2component ros2doctor ros2interface ros2launch ros2lifecycle ros2multicast ros2node ros2param ros2pkg ros2plugin ros2run ros2service ros2topic sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package for ros2cli common extensions";
    license = with lib.licenses; [ asl20 ];
  };
}
