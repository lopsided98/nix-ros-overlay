
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-schunk-svh-library";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/schunk_svh_library-release/archive/release/melodic/schunk_svh_library/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "ac6f8612c04ac2ce32a8e55ed52f236a05305b5c414d2153ff8204a4b8dd879b";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing the Schunk five finger hand.'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
