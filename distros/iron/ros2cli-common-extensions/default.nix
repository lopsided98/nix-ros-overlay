
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-xml, launch-yaml, ros2action, ros2cli, ros2component, ros2doctor, ros2interface, ros2launch, ros2lifecycle, ros2multicast, ros2node, ros2param, ros2pkg, ros2run, ros2service, ros2topic, sros2 }:
buildRosPackage {
  pname = "ros-iron-ros2cli-common-extensions";
  version = "0.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli_common_extensions-release/archive/release/iron/ros2cli_common_extensions/0.2.2-3.tar.gz";
    name = "0.2.2-3.tar.gz";
    sha256 = "99d934f8d448f6a2ff7b0a51e0cb65619101fb23d36f7917b88445c85511ed19";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-xml launch-yaml ros2action ros2cli ros2component ros2doctor ros2interface ros2launch ros2lifecycle ros2multicast ros2node ros2param ros2pkg ros2run ros2service ros2topic sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package for ros2cli common extensions'';
    license = with lib.licenses; [ asl20 ];
  };
}
