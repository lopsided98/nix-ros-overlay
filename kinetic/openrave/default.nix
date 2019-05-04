
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bullet, qt4, git, ffmpeg, zlib, boost, pythonPackages, soqt, x264, ode, pcre, catkin, collada-robots, std-msgs, python, libxml2, qhull, libogg, assimp, liblapack, glew }:
buildRosPackage {
  pname = "ros-kinetic-openrave";
  version = "0.0.6";

  src = fetchurl {
    url = https://github.com/tork-a/openrave_planning-release/archive/release/kinetic/openrave/0.0.6-0.tar.gz;
    sha256 = "dad9fd8dc17811bdc5f3cfc920441e422bc94a57c3522cfd9c7f3bedd29e49c4";
  };

  buildInputs = [ bullet qt4 git pythonPackages.scipy pythonPackages.ipython ffmpeg zlib boost soqt ode pythonPackages.numpy x264 pcre std-msgs python libxml2 qhull libogg assimp liblapack pythonPackages.h5py glew ];
  propagatedBuildInputs = [ bullet qt4 pythonPackages.scipy pythonPackages.ipython ffmpeg zlib boost soqt ode pythonPackages.numpy x264 pcre collada-robots std-msgs python qhull libogg assimp liblapack pythonPackages.h5py glew ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''In order to use, please add the following line in your bashrc:'';
    license = with lib.licenses; [ gpl1 "Version 2.0" ];
  };
}
