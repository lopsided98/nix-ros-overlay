
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, boost, catkin, pythonPackages, curl, roslib }:
buildRosPackage {
  pname = "ros-melodic-resource-retriever";
  version = "1.12.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/resource_retriever-release/archive/release/melodic/resource_retriever/1.12.4-0.tar.gz";
    name = "1.12.4-0.tar.gz";
    sha256 = "568a6d1f0bd3a0c6e4c26b6e6524bc14a282df35a6b3ea1720e37591aaf024a1";
  };

  buildType = "catkin";
  buildInputs = [ curl roslib rosconsole boost ];
  propagatedBuildInputs = [ rosconsole boost pythonPackages.rospkg curl roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package retrieves data from url-format files such as http://,
   ftp://, package:// file://, etc., and loads the data into memory.
   The package:// url for ros packages is translated into a local
   file:// url.  The resourse retriever was initially designed to load
   mesh files into memory, but it can be used for any type of
   data. The resource retriever is based on the the libcurl library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
