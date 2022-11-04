
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-yocs-controllers";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_controllers/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "f45d647a26a653328fe0a94eb13c786fe4854c891e03509806d0fa013d09f797";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library for various controller types and algorithms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
