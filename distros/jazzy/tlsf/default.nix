
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-tlsf";
  version = "0.9.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tlsf-release/archive/release/jazzy/tlsf/0.9.0-3.tar.gz";
    name = "0.9.0-3.tar.gz";
    sha256 = "a066aeacd935a3adbebf3b5b346190d7d310008e2752feefdc3d461e6bc97d37";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TLSF allocator version 2.4.6";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
