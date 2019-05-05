
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, catkin, roscpp, rostest, xmlrpcpp, tf }:
buildRosPackage {
  pname = "ros-lunar-tf-remapper-cpp";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/peci1/tf_remapper_cpp-release/archive/release/lunar/tf_remapper_cpp/1.1.1-0.tar.gz;
    sha256 = "4779dca7e16c50f804ca67a3eff3b6a339a1139e66d370b96950cb0705e138cd";
  };

  buildInputs = [ roscpp tf2-msgs xmlrpcpp ];
  checkInputs = [ rostest tf ];
  propagatedBuildInputs = [ roscpp tf2-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''More efficient version of tf/tf_remap able to handle TFs at kHz with tens of subscribers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
