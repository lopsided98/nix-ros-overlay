
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libssh, pkg-config, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh-authkey";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh_authkey/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "74a3d71bcec7fde336b1f6e10aeacf4ddb21778905cf5c9d0a1fbd03ad462c52";
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
