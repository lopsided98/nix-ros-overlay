
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, doxygen, eigen, graphviz, gtest, lcov, rdl-cmake }:
buildRosPackage {
  pname = "ros-melodic-rdl-dynamics";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/melodic/rdl_dynamics/3.2.0-1/rdl_release-release-melodic-rdl_dynamics-3.2.0-1.tar.gz";
    name = "rdl_release-release-melodic-rdl_dynamics-3.2.0-1.tar.gz";
    sha256 = "85053786c16693de1bd832d6f81307d41d63b593e2f2b54cd32d8adca0a03bf1";
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
