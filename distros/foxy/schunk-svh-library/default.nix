
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake }:
buildRosPackage {
  pname = "ros-foxy-schunk-svh-library";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/schunk_svh_library-release/archive/release/foxy/schunk_svh_library/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "e724509e3bb8d14d58b482e3e1d45f89ecd4e825ecf549ed20a47436f244cf3f";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing the Schunk five finger hand.'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
