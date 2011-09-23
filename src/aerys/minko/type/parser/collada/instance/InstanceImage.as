package aerys.minko.type.parser.collada.instance
{
	import aerys.minko.scene.node.IScene;
	import aerys.minko.type.error.collada.ColladaError;
	import aerys.minko.type.parser.collada.ColladaDocument;
	import aerys.minko.type.parser.collada.resource.IResource;
	
	public class InstanceImage implements IInstance
	{
		private var _document	: ColladaDocument;
		private var _sourceId	: String;
		
		public static function createFromXML(xml		: XML, 
											 document	: ColladaDocument) : InstanceImage
		{
			throw new ColladaError('not yet implemented');
		}
		
		public static function createFromSourceId(sourceId	: String, 
												  document	: ColladaDocument) : InstanceImage
		{
			var im : InstanceImage = new InstanceImage();
			im._document = document;
			im._sourceId = sourceId;
			return im;
		}
		
		public function get resource() : IResource
		{
			return _document.getImageById(_sourceId);
		}
		
		public function toScene():IScene
		{
			return null;
		}
	}
}