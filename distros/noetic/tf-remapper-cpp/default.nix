
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rostest, tf, tf2-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-tf-remapper-cpp";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/peci1/tf_remapper_cpp-release/archive/release/noetic/tf_remapper_cpp/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "ca712c9318d7ad39dbfa3f8c7736fe7e9600a399177a4a0b6e5c707bbe51e6c1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest tf ];
  propagatedBuildInputs = [ roscpp tf2-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''More efficient version of tf/tf_remap able to handle TFs at kHz with tens of subscribers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
