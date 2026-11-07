
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libssh, pkg-config, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh-authkey";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh_authkey/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "292a74460ae207cf61e8dc9d76c58ff99b7371c7141d26d931b25313dbbcfffc";
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
