
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-lyrical-ecl-sigslots-lite";
  version = "1.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/lyrical/ecl_sigslots_lite/1.2.0-6.tar.gz";
    name = "1.2.0-6.tar.gz";
    sha256 = "3f1823daa33b9342a64caa90b41e337570ba2c3b1e2b9d158e41c3ee447eff57";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  propagatedBuildInputs = [ ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This avoids use of dynamic storage (malloc/new) and thread safety (mutexes) to
     provide a very simple sigslots implementation that can be used for *very*
     embedded development.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
