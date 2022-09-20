
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-toposens-sensor-library";
  version = "1.2.4-r4";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-library-release/-/archive/release/noetic/toposens-sensor-library/1.2.4-4/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "39671f17d25ef7add7279a4e55fc6bfa70f8bd47c22fa39fdc7ac123ad8dddd2";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3Packages.cffi ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Driver for toposens echo sensor'';
    license = with lib.licenses; [ mit ];
  };
}
