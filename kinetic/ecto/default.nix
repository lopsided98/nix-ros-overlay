
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, boost }:
buildRosPackage {
  pname = "ros-kinetic-ecto";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/ecto-release/archive/release/kinetic/ecto/0.6.12-0.tar.gz;
    sha256 = "6e7ed6ec4a59b7a34d2a936c291a7c115e930ffaacd8f44aeef02140ac4dbb9a";
  };

  buildInputs = [ python boost ];
  propagatedBuildInputs = [ python boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ecto is a hybrid C++/Python development framework for constructing and maintaining pipelines.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
