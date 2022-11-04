
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rostest, tf, tf2-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-tf-remapper-cpp";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/peci1/tf_remapper_cpp-release/archive/release/melodic/tf_remapper_cpp/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "e212a7354d6e6f6eb42f9f8a90551b26cc4ffd427324bfe6f82ccbcd4603f77a";
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
