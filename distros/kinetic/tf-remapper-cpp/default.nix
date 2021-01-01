
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rostest, tf, tf2-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-tf-remapper-cpp";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/peci1/tf_remapper_cpp-release/archive/release/kinetic/tf_remapper_cpp/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "da882c8a6467c9123bd974dcaf94a6c0bd621ec87218a360af7587fbac411be5";
  };

  buildType = "catkin";
  checkInputs = [ rostest tf ];
  propagatedBuildInputs = [ roscpp tf2-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''More efficient version of tf/tf_remap able to handle TFs at kHz with tens of subscribers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
