
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, boost, catkin, pythonPackages, curl, roslib }:
buildRosPackage {
  pname = "ros-lunar-resource-retriever";
  version = "1.12.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/resource_retriever-release/archive/release/lunar/resource_retriever/1.12.4-0.tar.gz;
    sha256 = "5fe7e8b42104f37cca0958d92fb645d05c2724ae273ff4ed9a708ea960a50a45";
  };

  buildInputs = [ curl roslib rosconsole boost ];
  propagatedBuildInputs = [ curl rosconsole boost pythonPackages.rospkg roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package retrieves data from url-format files such as http://,
   ftp://, package:// file://, etc., and loads the data into memory.
   The package:// url for ros packages is translated into a local
   file:// url.  The resourse retriever was initially designed to load
   mesh files into memory, but it can be used for any type of
   data. The resource retriever is based on the the libcurl library.'';
    #license = lib.licenses.BSD;
  };
}
