
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libcap, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ethercat-grant";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/shadow-robot/ethercat_grant-release/archive/release/melodic/ethercat_grant/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "3b5baa1b6b84b2538af53dcc410d980579cbfc932f002dcf3cc25071bb452a52";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libcap roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Makes it possible to run the ros_ethercat_loop without using sudo. Forked from pr2-grant'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
