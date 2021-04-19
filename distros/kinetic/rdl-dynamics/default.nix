
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, doxygen, eigen, graphviz, gtest, lcov, rdl-cmake }:
buildRosPackage {
  pname = "ros-kinetic-rdl-dynamics";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/kinetic/rdl_dynamics/1.1.0-0/rdl_release-release-kinetic-rdl_dynamics-1.1.0-0.tar.gz";
    name = "rdl_release-release-kinetic-rdl_dynamics-1.1.0-0.tar.gz";
    sha256 = "b26380fe4310ddd34286e20652d1bd8b49e6f76ee1e23864c4466d336afb4cd0";
  };

  buildType = "catkin";
  checkInputs = [ gtest lcov rdl-cmake ];
  propagatedBuildInputs = [ doxygen eigen graphviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rdl_dynamics package'';
    license = with lib.licenses; [ "zlib" ];
  };
}
