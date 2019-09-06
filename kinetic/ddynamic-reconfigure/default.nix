
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, dynamic-reconfigure, roscpp, gmock }:
buildRosPackage {
  pname = "ros-kinetic-ddynamic-reconfigure";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/pal-gbp/ddynamic_reconfigure/archive/release/kinetic/ddynamic_reconfigure/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "0658a7204d23448b528664e8d5cb05f730edec2fb62377fb401cbc1ccfd68714";
  };

  buildType = "catkin";
  buildInputs = [ roscpp dynamic-reconfigure ];
  checkInputs = [ rostest gmock ];
  propagatedBuildInputs = [ roscpp dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ddynamic_reconfigure package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
