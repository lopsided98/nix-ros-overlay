
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rsync, catkin }:
buildRosPackage {
  pname = "ros-melodic-abseil-cpp";
  version = "0.2.3-r1";

  src = fetchurl {
    url = https://github.com/Eurecat/abseil_cpp-release/archive/release/melodic/abseil_cpp/0.2.3-1.tar.gz;
    sha256 = "016b0cb70355a46ec06fa709a09117aaed9f8c7351a216634cefdfc642456b91";
  };

  buildInputs = [ rsync ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The abseil_cpp package'';
    #license = lib.licenses.Apache;
  };
}
