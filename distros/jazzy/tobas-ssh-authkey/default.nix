
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libssh, pkg-config, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh-authkey";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh_authkey/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "3f94620ffedfb7839f4eb002c17609ad28c759cedcf99aaf1cdfb34ba4f41491";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ libssh tobas-string-tools ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Utilities for creating and managing SSH authentication keys.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
